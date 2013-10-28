.class Lcom/lx/launcher8/util/BitmapManager$MySoft;
.super Ljava/lang/ref/SoftReference;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/util/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySoft"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field final synthetic this$0:Lcom/lx/launcher8/util/BitmapManager;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/util/BitmapManager;Landroid/graphics/Bitmap;Ljava/lang/ref/ReferenceQueue;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "bitmap"
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, queue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<-Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/lx/launcher8/util/BitmapManager$MySoft;->this$0:Lcom/lx/launcher8/util/BitmapManager;

    .line 59
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 60
    iput-object p4, p0, Lcom/lx/launcher8/util/BitmapManager$MySoft;->key:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/util/BitmapManager$MySoft;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/util/BitmapManager$MySoft;->key:Ljava/lang/String;

    return-object v0
.end method
