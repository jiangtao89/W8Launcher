.class public Lcom/lx/launcher8/crop/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final INVALID_LATLNG:F = 255.0f

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final NO_STORAGE_ERROR:I = -0x1

.field public static final RESULT_COMMON_MENU_CROP:I = 0x1ea


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculatePicturesRemaining()I
    .locals 6

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, storageDirectory:Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-float v4, v4

    .line 73
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-float v5, v5

    .line 72
    mul-float/2addr v4, v5

    .line 73
    const v5, 0x48c35000

    .line 72
    div-float v1, v4, v5

    .line 74
    .local v1, remaining:F
    float-to-int v4, v1

    .line 80
    .end local v1           #remaining:F
    .end local v2           #stat:Landroid/os/StatFs;
    :goto_0
    return v4

    .line 76
    :catch_0
    move-exception v0

    .line 80
    .local v0, ex:Ljava/lang/Exception;
    const/4 v4, -0x2

    goto :goto_0
.end method

.method public static showStorageToast(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 42
    invoke-static {}, Lcom/lx/launcher8/crop/MenuHelper;->calculatePicturesRemaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/lx/launcher8/crop/MenuHelper;->showStorageToast(Landroid/app/Activity;I)V

    .line 43
    return-void
.end method

.method public static showStorageToast(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "remaining"

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, noStorageText:Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, state:Ljava/lang/String;
    const-string v2, "checking"

    if-ne v1, v2, :cond_2

    .line 51
    const v2, 0x7f0a01d6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 60
    const/16 v2, 0x1388

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 62
    :cond_1
    return-void

    .line 53
    .restart local v1       #state:Ljava/lang/String;
    :cond_2
    const v2, 0x7f0a01d3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    .end local v1           #state:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 56
    const v2, 0x7f0a01d5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
