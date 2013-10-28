.class public Lcom/lx/launcher8/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/util/Utils$SettingsStyle;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCKSCREEN_PAPER:Ljava/lang/String; = null

.field public static final DOWNLOAD_BROADCAST_ACTION:Ljava/lang/String; = "download_broadcast_action"

.field public static soundNameResources:[I

.field public static soundResources:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x11

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lockscreen"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lock_bg_default.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/util/Utils;->DEFAULT_LOCKSCREEN_PAPER:Ljava/lang/String;

    .line 50
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lx/launcher8/util/Utils;->soundResources:[I

    .line 55
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lx/launcher8/util/Utils;->soundNameResources:[I

    .line 44
    return-void

    .line 50
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x6t 0x7ft
        0x9t 0x0t 0x6t 0x7ft
        0xat 0x0t 0x6t 0x7ft
        0xbt 0x0t 0x6t 0x7ft
        0xct 0x0t 0x6t 0x7ft
        0xdt 0x0t 0x6t 0x7ft
        0xet 0x0t 0x6t 0x7ft
        0xft 0x0t 0x6t 0x7ft
        0x10t 0x0t 0x6t 0x7ft
        0x1t 0x0t 0x6t 0x7ft
        0x2t 0x0t 0x6t 0x7ft
        0x3t 0x0t 0x6t 0x7ft
        0x4t 0x0t 0x6t 0x7ft
        0x5t 0x0t 0x6t 0x7ft
        0x6t 0x0t 0x6t 0x7ft
        0x7t 0x0t 0x6t 0x7ft
        0x8t 0x0t 0x6t 0x7ft
    .end array-data

    .line 55
    :array_1
    .array-data 0x4
        0x44t 0x2t 0xat 0x7ft
        0x45t 0x2t 0xat 0x7ft
        0x46t 0x2t 0xat 0x7ft
        0x47t 0x2t 0xat 0x7ft
        0x48t 0x2t 0xat 0x7ft
        0x49t 0x2t 0xat 0x7ft
        0x4at 0x2t 0xat 0x7ft
        0x4bt 0x2t 0xat 0x7ft
        0x4ct 0x2t 0xat 0x7ft
        0x4dt 0x2t 0xat 0x7ft
        0x4et 0x2t 0xat 0x7ft
        0x4ft 0x2t 0xat 0x7ft
        0x50t 0x2t 0xat 0x7ft
        0x51t 0x2t 0xat 0x7ft
        0x52t 0x2t 0xat 0x7ft
        0x53t 0x2t 0xat 0x7ft
        0x54t 0x2t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alphaTranslate(I)I
    .locals 1
    .parameter "per"

    .prologue
    .line 434
    mul-int/lit16 v0, p0, 0xff

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static checkLauncherIsDefault(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 741
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 742
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v0, comList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v1, iList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 745
    .local v2, itf:Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 748
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static convertText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    .line 258
    const-string v1, "\n"

    .line 259
    .local v1, t:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 262
    return-object v1

    .line 260
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .parameter "fromFile"
    .parameter "toFile"

    .prologue
    const/4 v5, 0x0

    .line 623
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_0

    .line 642
    :goto_0
    return v5

    .line 625
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 626
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 628
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 629
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 630
    .local v4, out:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 631
    .local v0, bs:[B
    const/4 v3, 0x0

    .line 632
    .local v3, len:I
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_2

    .line 635
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 636
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 637
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 642
    const/4 v5, 0x1

    goto :goto_0

    .line 633
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 638
    .end local v0           #bs:[B
    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v3           #len:I
    .end local v4           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 639
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6
    .parameter "in"
    .parameter "toFile"

    .prologue
    const/4 v4, 0x0

    .line 681
    if-nez p0, :cond_0

    .line 699
    :goto_0
    return v4

    .line 683
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 684
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 686
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 687
    .local v3, out:Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 688
    .local v0, bs:[B
    const/4 v2, 0x0

    .line 689
    .local v2, len:I
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_2

    .line 692
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 693
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 694
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 699
    const/4 v4, 0x1

    goto :goto_0

    .line 690
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 695
    .end local v0           #bs:[B
    .end local v2           #len:I
    .end local v3           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 696
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 8
    .parameter "oldPath"
    .parameter "toFile"

    .prologue
    const/4 v6, 0x0

    .line 655
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v6

    .line 657
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    .local v2, fromFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 660
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 661
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 663
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 664
    .local v3, in:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 665
    .local v5, out:Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 666
    .local v0, bs:[B
    const/4 v4, 0x0

    .line 667
    .local v4, len:I
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_4

    .line 670
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 671
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 672
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 677
    const/4 v6, 0x1

    goto :goto_0

    .line 668
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 673
    .end local v0           #bs:[B
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #len:I
    .end local v5           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 674
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    const/4 v7, 0x0

    .line 596
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v7

    .line 598
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 599
    .local v2, fromFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 600
    .local v6, toFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 602
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 603
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 605
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 606
    .local v3, in:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 607
    .local v5, out:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 608
    .local v0, bs:[B
    const/4 v4, 0x0

    .line 609
    .local v4, len:I
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_4

    .line 612
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 613
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 614
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 619
    const/4 v7, 0x1

    goto :goto_0

    .line 610
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 615
    .end local v0           #bs:[B
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #len:I
    .end local v5           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 616
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createDrawable(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 5
    .parameter "selectColor"
    .parameter "defColor"

    .prologue
    const/4 v3, 0x2

    .line 424
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 425
    .local v1, listDrawable:Landroid/graphics/drawable/StateListDrawable;
    new-instance v0, Lcom/lx/launcher8/view/ColorDrawable;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    .line 426
    .local v0, cd:Lcom/lx/launcher8/view/ColorDrawable;
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 427
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 428
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 429
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x101009e

    aput v4, v2, v3

    new-instance v3, Lcom/lx/launcher8/view/ColorDrawable;

    invoke-direct {v3, p1}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 430
    return-object v1

    .line 426
    nop

    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    .line 427
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa1t 0x0t 0x1t 0x1t
    .end array-data

    .line 428
    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public static createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "path"

    .prologue
    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 387
    .local v0, is:Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 391
    .end local v0           #is:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 388
    :catch_0
    move-exception v1

    .line 391
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "rid"

    .prologue
    const/4 v0, 0x0

    .line 395
    if-nez p1, :cond_0

    .line 401
    :goto_0
    return-object v0

    .line 398
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createFromExtends(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "path"

    .prologue
    const/4 v8, 0x0

    .line 405
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v6, v8

    .line 416
    :goto_0
    return-object v6

    .line 408
    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 409
    .local v7, fis:Ljava/io/FileInputStream;
    const/16 v0, 0x9c4

    const v1, 0x9c40

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 410
    invoke-static {}, Lcom/lx/launcher8/crop/img/Util;->createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 409
    invoke-static/range {v0 .. v5}, Lcom/lx/launcher8/crop/img/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 411
    .local v6, bt:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 413
    .end local v6           #bt:Landroid/graphics/Bitmap;
    .end local v7           #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    :goto_1
    move-object v6, v8

    .line 416
    goto :goto_0

    .line 414
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static createIntralBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .parameter "bt"
    .parameter "name"

    .prologue
    .line 507
    if-nez p0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    if-eqz p1, :cond_2

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 510
    :cond_2
    const-string p1, "tmp"

    .line 513
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/lx/launcher8/util/BasePath;->PACK_FILESDIR_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, path:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 516
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 520
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 521
    .local v3, fos:Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 522
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 523
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "Util save tempfile error"

    invoke-static {v5, v0}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 512
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #f:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/lx/launcher8/util/Utils;->yyyXxxx(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 525
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #path:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 526
    .local v1, e1:Ljava/io/IOException;
    const-string v5, "Util save tempfile error"

    invoke-static {v5, v1}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static decodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 790
    if-nez p0, :cond_0

    .line 791
    const-string v0, ""

    .line 792
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static downloadingDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;I)V
    .locals 4
    .parameter "context"
    .parameter "softSeed"
    .parameter "downloadState"

    .prologue
    const v3, 0x7f0a01ca

    const v1, 0x7f0a01c4

    .line 284
    packed-switch p2, :pswitch_data_0

    .line 364
    :goto_0
    return-void

    .line 286
    :pswitch_0
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    goto :goto_0

    .line 289
    :pswitch_1
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 290
    const v1, 0x7f0a01c5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 291
    const v1, 0x7f0a01c9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/util/Utils$1;

    invoke-direct {v2, p0, p1}, Lcom/lx/launcher8/util/Utils$1;-><init>(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 297
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/util/Utils$2;

    invoke-direct {v2, p1, p0}, Lcom/lx/launcher8/util/Utils$2;-><init>(Lcom/app/download/bean/FileSeed;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    goto :goto_0

    .line 313
    :pswitch_2
    const v0, 0x7f0a01c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :pswitch_3
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 317
    const v1, 0x7f0a01c7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 318
    const v1, 0x7f0a0184

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/util/Utils$3;

    invoke-direct {v2, p0, p1}, Lcom/lx/launcher8/util/Utils$3;-><init>(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 324
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/util/Utils$4;

    invoke-direct {v2, p1, p0}, Lcom/lx/launcher8/util/Utils$4;-><init>(Lcom/app/download/bean/FileSeed;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    goto/16 :goto_0

    .line 340
    :pswitch_4
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 341
    const v1, 0x7f0a01c8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 342
    const v1, 0x7f0a01cc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/util/Utils$5;

    invoke-direct {v2, p1, p0}, Lcom/lx/launcher8/util/Utils$5;-><init>(Lcom/app/download/bean/FileSeed;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 355
    const v1, 0x7f0a0078

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/util/Utils$6;

    invoke-direct {v2}, Lcom/lx/launcher8/util/Utils$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    goto/16 :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 778
    if-nez p0, :cond_0

    .line 779
    const-string v0, ""

    .line 780
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/lx/launcher8/util/Utils;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCellSize(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "cell"

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a0081

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChinese(I)Ljava/lang/String;
    .locals 5
    .parameter "num"

    .prologue
    const/16 v3, 0x64

    .line 210
    if-lez p0, :cond_0

    if-gt p0, v3, :cond_0

    .line 211
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 254
    :goto_0
    return-object v2

    .line 212
    :cond_0
    if-le p0, v3, :cond_1

    .line 213
    rem-int/lit8 p0, p0, 0x64

    .line 214
    :cond_1
    const-string v2, ""

    .line 215
    .local v2, str:Ljava/lang/String;
    div-int/lit8 v0, p0, 0xa

    .line 216
    .local v0, n0:I
    rem-int/lit8 v1, p0, 0xa

    .line 217
    .local v1, n1:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5341"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 224
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    goto :goto_0

    .line 219
    :cond_3
    if-eqz v0, :cond_2

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x64

    invoke-static {v4}, Lcom/lx/launcher8/util/Utils;->getChinese(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5341"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 227
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    goto :goto_0

    .line 230
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e8c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    goto :goto_0

    .line 233
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e09"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    goto/16 :goto_0

    .line 236
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u56db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    goto/16 :goto_0

    .line 239
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e94"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    goto/16 :goto_0

    .line 242
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u516d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    goto/16 :goto_0

    .line 245
    :pswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e03"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    goto/16 :goto_0

    .line 248
    :pswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u516b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    goto/16 :goto_0

    .line 251
    :pswitch_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e5d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getChineseTime(III)Ljava/lang/String;
    .locals 8
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const/4 v7, 0x0

    .line 274
    invoke-static {p0, p1, p2}, Lcom/lx/launcher8/util/LauarUtil;->calElement(III)[J

    move-result-object v2

    .line 275
    .local v2, lauarStrArray:[J
    aget-wide v5, v2, v7

    long-to-int v5, v5

    invoke-static {v5}, Lcom/lx/launcher8/util/LauarUtil;->cyclical(I)Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, yearStr:Ljava/lang/String;
    aget-wide v5, v2, v7

    long-to-int v5, v5

    invoke-static {v5}, Lcom/lx/launcher8/util/LauarUtil;->AnimalsYear(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, animal:Ljava/lang/String;
    sget-object v5, Lcom/lx/launcher8/util/LauarUtil;->dayStrArray:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-wide v6, v2, v6

    long-to-int v6, v6

    aget-object v3, v5, v6

    .line 278
    .local v3, monthStr:Ljava/lang/String;
    const/4 v5, 0x2

    aget-wide v5, v2, v5

    long-to-int v5, v5

    invoke-static {v5}, Lcom/lx/launcher8/util/LauarUtil;->getchina(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, dayStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5e74 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u6708"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getDay(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "day"
    .parameter "context"

    .prologue
    .line 194
    rem-int/lit8 v2, p0, 0x64

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    rem-int/lit8 v2, p0, 0x64

    const/16 v3, 0x1f

    if-le v2, v3, :cond_2

    .line 195
    :cond_0
    const-string v1, ""

    .line 206
    :cond_1
    :goto_0
    return-object v1

    .line 196
    :cond_2
    const-string v1, ""

    .line 197
    .local v1, str:Ljava/lang/String;
    const v2, 0x7f0a0005

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, language:Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    const/16 v2, 0x64

    if-le p0, v2, :cond_3

    .line 200
    invoke-static {p0}, Lcom/lx/launcher8/util/Utils;->getChinese(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/util/Utils;->convertText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_3
    invoke-static {p0}, Lcom/lx/launcher8/util/Utils;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 202
    :cond_4
    const-string v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    rem-int/lit8 p0, p0, 0x64

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileUrl"

    .prologue
    .line 864
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    const-string v1, ""

    .line 875
    :goto_0
    return-object v1

    .line 868
    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 869
    .local v0, ix:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 871
    add-int/lit8 v1, v0, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 872
    :catch_0
    move-exception v1

    .line 875
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileUrl"
    .parameter "fileName"

    .prologue
    .line 840
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 854
    .end local p1
    :goto_0
    return-object p1

    .line 843
    .restart local p1
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 844
    const-string p1, "Unknown"

    goto :goto_0

    .line 847
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 848
    .local v0, ix:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 850
    add-int/lit8 v1, v0, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 851
    :catch_0
    move-exception v1

    .line 854
    :cond_2
    const-string p1, "Unknown"

    goto :goto_0
.end method

.method public static declared-synchronized getFirstChar(Landroid/content/Context;Ljava/lang/CharSequence;)C
    .locals 5
    .parameter "context"
    .parameter "title"

    .prologue
    .line 369
    const-class v3, Lcom/lx/launcher8/util/Utils;

    monitor-enter v3

    const/16 v0, 0x23

    .line 370
    .local v0, ch:C
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {p0, v2}, Lcom/pinyin/PinyinUtil;->toPinyin(Landroid/content/Context;C)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, chars:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 373
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 376
    .end local v1           #chars:Ljava/lang/String;
    :cond_0
    monitor-exit v3

    return v0

    .line 369
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getFormatTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 561
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, time:Ljava/lang/String;
    return-object v1
.end method

.method public static getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "intent"

    .prologue
    .line 467
    if-nez p0, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 469
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getIntentExtra(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/os/Bundle;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentExtra(Landroid/os/Bundle;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bundle"
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 477
    if-nez p0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-object v0

    .line 479
    :cond_1
    const-string v5, "extra_temp"

    .line 480
    .local v5, key:Ljava/lang/String;
    if-lez p1, :cond_2

    .line 481
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 482
    :cond_2
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, path:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 485
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 488
    const/4 v3, 0x0

    .line 490
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 496
    .local v0, bt:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 498
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v7

    goto :goto_0

    .line 493
    .end local v0           #bt:Landroid/graphics/Bitmap;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 494
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v7, "Util get tempfile error"

    invoke-static {v7, v1}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 496
    if-eqz v3, :cond_0

    .line 498
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 499
    :catch_2
    move-exception v7

    goto :goto_0

    .line 495
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    .line 496
    :goto_2
    if-eqz v3, :cond_3

    .line 498
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 502
    :cond_3
    :goto_3
    throw v7

    .line 499
    :catch_3
    move-exception v8

    goto :goto_3

    .line 495
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 493
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 904
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "defValue"

    .prologue
    .line 570
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 571
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, simNum:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "460"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 574
    const-string v3, "46000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46002"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 575
    :cond_0
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    .line 581
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 583
    .end local p1
    :goto_1
    return-object p1

    .line 576
    .restart local p1
    :cond_2
    const-string v3, "46001"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 577
    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_0

    .line 578
    :cond_3
    const-string v3, "46003"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 579
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_0

    :cond_4
    move-object p1, v0

    .line 583
    goto :goto_1
.end method

.method public static getMonth(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "month"
    .parameter "context"

    .prologue
    .line 141
    rem-int/lit8 v2, p0, 0x64

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    rem-int/lit8 v2, p0, 0x64

    const/16 v3, 0xc

    if-le v2, v3, :cond_2

    .line 142
    :cond_0
    const-string v1, ""

    .line 190
    :cond_1
    :goto_0
    return-object v1

    .line 143
    :cond_2
    const-string v1, ""

    .line 144
    .local v1, str:Ljava/lang/String;
    const v2, 0x7f0a0005

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, language:Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    const/16 v2, 0x64

    if-le p0, v2, :cond_3

    .line 147
    invoke-static {p0}, Lcom/lx/launcher8/util/Utils;->getChinese(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/util/Utils;->convertText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 148
    :cond_3
    invoke-static {p0}, Lcom/lx/launcher8/util/Utils;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 149
    :cond_4
    const-string v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    rem-int/lit8 p0, p0, 0x64

    .line 151
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    const-string v1, "January"

    .line 154
    goto :goto_0

    .line 156
    :pswitch_1
    const-string v1, "February"

    .line 157
    goto :goto_0

    .line 159
    :pswitch_2
    const-string v1, "March"

    .line 160
    goto :goto_0

    .line 162
    :pswitch_3
    const-string v1, "April"

    .line 163
    goto :goto_0

    .line 165
    :pswitch_4
    const-string v1, "May"

    .line 166
    goto :goto_0

    .line 168
    :pswitch_5
    const-string v1, "June"

    .line 169
    goto :goto_0

    .line 171
    :pswitch_6
    const-string v1, "July"

    .line 172
    goto :goto_0

    .line 174
    :pswitch_7
    const-string v1, "August"

    .line 175
    goto :goto_0

    .line 177
    :pswitch_8
    const-string v1, "September"

    .line 178
    goto :goto_0

    .line 180
    :pswitch_9
    const-string v1, "October"

    .line 181
    goto :goto_0

    .line 183
    :pswitch_a
    const-string v1, "November"

    .line 184
    goto :goto_0

    .line 186
    :pswitch_b
    const-string v1, "December"

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getPmTime(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "time"
    .parameter "timeFormat"

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 106
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v9

    .line 107
    .local v0, hour:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v8

    .line 108
    .local v2, minutes:Ljava/lang/String;
    const-string v3, ""

    .line 109
    .local v3, resultH:Ljava/lang/String;
    const-string v4, ""

    .line 110
    .local v4, resultP:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 111
    .local v1, hourInt:I
    const-string v5, "12"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 112
    rem-int/lit8 v5, v1, 0xc

    if-nez v5, :cond_3

    .line 113
    div-int/lit8 v5, v1, 0xc

    if-ne v5, v8, :cond_1

    .line 114
    const-string v3, "12"

    .line 115
    const-string v4, "PM"

    .line 137
    :cond_0
    :goto_0
    new-array v5, v7, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v4, v5, v8

    return-object v5

    .line 116
    :cond_1
    div-int/lit8 v5, v1, 0xc

    if-eq v5, v7, :cond_2

    div-int/lit8 v5, v1, 0xc

    if-nez v5, :cond_0

    .line 117
    :cond_2
    const-string v3, "12"

    .line 118
    const-string v4, "AM"

    goto :goto_0

    .line 121
    :cond_3
    rem-int/lit8 v5, v1, 0xc

    const/16 v6, 0xa

    if-ge v5, v6, :cond_4

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-int/lit8 v6, v1, 0xc

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    :goto_1
    div-int/lit8 v5, v1, 0xc

    if-nez v5, :cond_5

    .line 127
    const-string v4, "AM"

    goto :goto_0

    .line 124
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    rem-int/lit8 v6, v1, 0xc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 128
    :cond_5
    div-int/lit8 v5, v1, 0xc

    if-ne v5, v8, :cond_0

    .line 129
    const-string v4, "PM"

    goto :goto_0

    .line 133
    :cond_6
    rem-int/lit8 v1, v1, 0x18

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    const-string v4, ""

    goto :goto_0
.end method

.method public static getTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 555
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 556
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, time:Ljava/lang/String;
    return-object v1
.end method

.method public static getWeek(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "week"
    .parameter "context"

    .prologue
    .line 68
    const-string v1, ""

    .line 69
    .local v1, str:Ljava/lang/String;
    rem-int/lit8 v2, p0, 0x64

    packed-switch v2, :pswitch_data_0

    .line 92
    :goto_0
    const v2, 0x7f0a0005

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, language:Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x64

    if-lt p0, v2, :cond_0

    .line 94
    invoke-static {v1}, Lcom/lx/launcher8/util/Utils;->convertText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    return-object v1

    .line 71
    .end local v0           #language:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    :pswitch_0
    const v2, 0x7f0a0082

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    goto :goto_0

    .line 74
    :pswitch_1
    const v2, 0x7f0a0083

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    goto :goto_0

    .line 77
    :pswitch_2
    const v2, 0x7f0a0084

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    goto :goto_0

    .line 80
    :pswitch_3
    const v2, 0x7f0a0085

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    goto :goto_0

    .line 83
    :pswitch_4
    const v2, 0x7f0a0086

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    goto :goto_0

    .line 86
    :pswitch_5
    const v2, 0x7f0a0087

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    goto :goto_0

    .line 89
    :pswitch_6
    const v2, 0x7f0a0088

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static loadIntralBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 531
    if-eqz p0, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 532
    :cond_0
    const-string p0, "tmp"

    .line 535
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/lx/launcher8/util/BasePath;->PACK_FILESDIR_PATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, path:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v6

    .line 551
    :goto_1
    return-object v0

    .line 534
    .end local v5           #path:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    invoke-static {p0, v7}, Lcom/lx/launcher8/util/Utils;->yyyXxxx(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 538
    .restart local v5       #path:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v0, v6

    .line 540
    goto :goto_1

    .line 542
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 543
    .local v4, fis:Ljava/io/FileInputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 544
    .local v0, bt:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 546
    .end local v0           #bt:Landroid/graphics/Bitmap;
    .end local v4           #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 547
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v7, "Util get tempfile error"

    invoke-static {v7, v1}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_2
    move-object v0, v6

    .line 551
    goto :goto_1

    .line 548
    :catch_1
    move-exception v2

    .line 549
    .local v2, e1:Ljava/io/IOException;
    const-string v7, "Util get tempfile error"

    invoke-static {v7, v2}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static openApkFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 885
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 893
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bundle"
    .parameter "bt"

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;I)V

    .line 439
    return-void
.end method

.method public static putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;I)V
    .locals 7
    .parameter "bundle"
    .parameter "bt"
    .parameter "index"

    .prologue
    .line 442
    if-nez p1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const/4 v1, 0x0

    .line 446
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v4, "temp"

    .line 447
    .local v4, name:Ljava/lang/String;
    if-lez p2, :cond_2

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 449
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/lx/launcher8/util/BasePath;->PACK_FILESDIR_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 451
    const-string v3, "extra_temp"

    .line 452
    .local v3, key:Ljava/lang/String;
    if-lez p2, :cond_3

    .line 453
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/lx/launcher8/util/BasePath;->PACK_FILESDIR_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 458
    if-eqz v2, :cond_5

    .line 460
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 455
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v5, "Util save tempfile error"

    invoke-static {v5, v0}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 458
    if-eqz v1, :cond_0

    .line 460
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 461
    :catch_1
    move-exception v5

    goto :goto_0

    .line 457
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 458
    :goto_2
    if-eqz v1, :cond_4

    .line 460
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 463
    :cond_4
    :goto_3
    throw v5

    .line 461
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .end local v3           #key:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :catch_3
    move-exception v6

    goto :goto_3

    .line 457
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #name:Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 455
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #key:Ljava/lang/String;
    :cond_5
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public static setDefaultLauncher(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 757
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 758
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 762
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/lx/launcher8/DefaultAct;

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 763
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v0, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 765
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 766
    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 768
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 769
    return-void
.end method

.method public static trans2System(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 800
    packed-switch p0, :pswitch_data_0

    .line 806
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 802
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 804
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 800
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static trans2Times(ILandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "times"
    .parameter "context"

    .prologue
    const v4, 0x7f0a0282

    const v3, 0x7f0a0283

    .line 818
    const v1, 0x7f0a0005

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, language:Ljava/lang/String;
    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_0

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit16 v2, p0, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 822
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 821
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    :goto_0
    return-object v1

    .line 824
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 826
    :cond_1
    const/16 v1, 0x2710

    if-lt p0, v1, :cond_2

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit16 v2, p0, 0x2710

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 829
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static yyyXxxx(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "plainText"
    .parameter "flag"

    .prologue
    .line 704
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 705
    .local v4, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 706
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 710
    .local v0, b:[B
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v1, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 711
    .local v1, buf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, offset:I
    :goto_0
    array-length v7, v0

    if-lt v5, v7, :cond_0

    .line 719
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 720
    .local v6, str:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 730
    .end local v0           #b:[B
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v4           #md:Ljava/security/MessageDigest;
    .end local v5           #offset:I
    .end local v6           #str:Ljava/lang/String;
    :goto_1
    :pswitch_0
    return-object v6

    .line 712
    .restart local v0       #b:[B
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    .restart local v4       #md:Ljava/security/MessageDigest;
    .restart local v5       #offset:I
    :cond_0
    aget-byte v3, v0, v5

    .line 713
    .local v3, i:I
    if-gez v3, :cond_1

    .line 714
    add-int/lit16 v3, v3, 0x100

    .line 715
    :cond_1
    const/16 v7, 0x10

    if-ge v3, v7, :cond_2

    .line 716
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 717
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 711
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 724
    .end local v3           #i:I
    .restart local v6       #str:Ljava/lang/String;
    :pswitch_1
    const/16 v7, 0x8

    const/16 v8, 0x18

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 728
    .end local v0           #b:[B
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v4           #md:Ljava/security/MessageDigest;
    .end local v5           #offset:I
    .end local v6           #str:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 729
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 730
    const/4 v6, 0x0

    goto :goto_1

    .line 720
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
