.class Lcom/lx/launcher8/crop/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/lx/launcher8/crop/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/crop/ImageViewTouchBase;

.field private final synthetic val$bitmap:Lcom/lx/launcher8/crop/RotateBitmap;

.field private final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/lx/launcher8/crop/ImageViewTouchBase;Lcom/lx/launcher8/crop/RotateBitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/crop/ImageViewTouchBase$1;->this$0:Lcom/lx/launcher8/crop/ImageViewTouchBase;

    iput-object p2, p0, Lcom/lx/launcher8/crop/ImageViewTouchBase$1;->val$bitmap:Lcom/lx/launcher8/crop/RotateBitmap;

    iput-boolean p3, p0, Lcom/lx/launcher8/crop/ImageViewTouchBase$1;->val$resetSupp:Z

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lx/launcher8/crop/ImageViewTouchBase$1;->this$0:Lcom/lx/launcher8/crop/ImageViewTouchBase;

    iget-object v1, p0, Lcom/lx/launcher8/crop/ImageViewTouchBase$1;->val$bitmap:Lcom/lx/launcher8/crop/RotateBitmap;

    iget-boolean v2, p0, Lcom/lx/launcher8/crop/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/lx/launcher8/crop/RotateBitmap;Z)V

    .line 161
    return-void
.end method
