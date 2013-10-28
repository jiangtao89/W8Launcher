.class Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$7;
.super Ljava/lang/Object;
.source "ThemeDetailAct.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->showDetailPic(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$7;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$7;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    #calls: Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->showFullScreen(Landroid/graphics/Bitmap;)V
    invoke-static {v0, p1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->access$2(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;Landroid/graphics/Bitmap;)V

    .line 402
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 397
    return-void
.end method
