.class Lcom/lx/launcher8/setting/ThemePickAct$1;
.super Landroid/os/Handler;
.source "ThemePickAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/ThemePickAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/ThemePickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ThemePickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/ThemePickAct$1;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;

    .line 180
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 183
    iget v4, p1, Landroid/os/Message;->what:I

    if-nez v4, :cond_1

    .line 184
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater$ViewHolder;

    .line 185
    .local v3, vh:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater$ViewHolder;
    iget-object v4, v3, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater$ViewHolder;->theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    invoke-virtual {v4}, Lcom/lx/launcher8/db/ThemeHelper$Theme;->getCacheName()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 188
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/ThemePickAct$1;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;
    invoke-static {v4}, Lcom/lx/launcher8/setting/ThemePickAct;->access$0(Lcom/lx/launcher8/setting/ThemePickAct;)Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/util/BitmapManager;->getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    if-nez v0, :cond_0

    .line 190
    iget-object v4, p0, Lcom/lx/launcher8/setting/ThemePickAct$1;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;

    iget-object v5, v3, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater$ViewHolder;->theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/lx/launcher8/db/ThemeHelper;->getSaveBitmap(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 192
    iget-object v4, p0, Lcom/lx/launcher8/setting/ThemePickAct$1;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;
    invoke-static {v4}, Lcom/lx/launcher8/setting/ThemePickAct;->access$0(Lcom/lx/launcher8/setting/ThemePickAct;)Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/lx/launcher8/util/BitmapManager;->addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 194
    :cond_0
    if-eqz v0, :cond_1

    .line 195
    iget-object v4, v3, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 196
    iget-object v4, v3, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    iget-object v4, v3, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v4, v3, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #vh:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater$ViewHolder;
    :cond_1
    :goto_0
    return-void

    .line 200
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #vh:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater$ViewHolder;
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method
