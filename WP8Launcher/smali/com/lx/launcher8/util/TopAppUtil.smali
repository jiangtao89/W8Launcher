.class public Lcom/lx/launcher8/util/TopAppUtil;
.super Ljava/lang/Object;
.source "TopAppUtil.java"


# static fields
.field public static final APP_DOWNLOAD_BROADCAST_ACTION:Ljava/lang/String; = "app_download_broadcast_action"

.field private static final PATH:Ljava/lang/String; = null

.field public static final REFRESH_CODE:I = 0xc8

.field public static final TOP_APP_GALLERY:Ljava/lang/String;

.field public static final TOP_APP_ICON:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/util/TopAppUtil;->PATH:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lx/launcher8/util/TopAppUtil;->PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/util/TopAppUtil;->TOP_APP_GALLERY:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lx/launcher8/util/TopAppUtil;->PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/util/TopAppUtil;->TOP_APP_ICON:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Landroid/content/Context;Lcom/lx/launcher8/setting/bean/TopAppInfo;I)V
    .locals 10
    .parameter "context"
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 39
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getPkName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getPkName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 46
    .local v9, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {p0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 52
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getFromId()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 53
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 54
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v0, "view_download"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    .end local v8           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {p0}, Lcom/lx/launcher8/download/DownloadHandler;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/download/DownloadHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getDownUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getSaveName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getPkName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getVsName()Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-virtual/range {v0 .. v6}, Lcom/lx/launcher8/download/DownloadHandler;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v0, "com.android.vending"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getPkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    :try_start_0
    invoke-virtual {p0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v7

    .line 72
    .local v7, e:Landroid/content/ActivityNotFoundException;
    new-instance v8, Landroid/content/Intent;

    .end local v8           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v8       #intent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://play.google.com/store/apps/details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getPkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "state"
    .parameter "bgColor"

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 128
    .local v1, res:Landroid/content/res/Resources;
    sparse-switch p1, :sswitch_data_0

    .line 151
    if-ne p2, v2, :cond_3

    .line 152
    const v2, 0x7f02007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0, v3, v3, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    return-object v0

    .line 130
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :sswitch_0
    if-ne p2, v2, :cond_0

    .line 131
    const v2, 0x7f02007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 133
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const v2, 0x7f02007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 137
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :sswitch_1
    if-ne p2, v2, :cond_1

    .line 138
    const v2, 0x7f020080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 140
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    const v2, 0x7f02007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 144
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :sswitch_2
    if-ne p2, v2, :cond_2

    .line 145
    const v2, 0x7f020083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 147
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    const v2, 0x7f020082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 154
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    const v2, 0x7f02007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getResId(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 104
    sparse-switch p0, :sswitch_data_0

    .line 112
    const v0, 0x7f0a01cc

    :goto_0
    return v0

    .line 106
    :sswitch_0
    const v0, 0x7f0a028c

    goto :goto_0

    .line 108
    :sswitch_1
    const v0, 0x7f0a0291

    goto :goto_0

    .line 110
    :sswitch_2
    const v0, 0x7f0a028d

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getTextColor(I)I
    .locals 1
    .parameter "bgColor"

    .prologue
    .line 169
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 170
    const/high16 v0, -0x100

    .line 172
    :goto_0
    return v0

    :cond_0
    const v0, -0x5f5f60

    goto :goto_0
.end method

.method public static setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .parameter "iv"
    .parameter "bt"
    .parameter "layoutParams"

    .prologue
    .line 86
    if-nez p1, :cond_2

    const v0, -0xbcbcbd

    .line 87
    .local v0, color:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    :cond_0
    if-eqz p2, :cond_1

    .line 93
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :cond_1
    return-void

    .line 86
    .end local v0           #color:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
