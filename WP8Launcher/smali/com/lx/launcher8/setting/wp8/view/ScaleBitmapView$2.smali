.class Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView$2;
.super Ljava/lang/Object;
.source "ScaleBitmapView.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->onViewMovingFront()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 110
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 106
    return-void
.end method
