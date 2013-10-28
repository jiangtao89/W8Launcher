.class Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$3;
.super Ljava/lang/Object;
.source "LockScreenPaperDetailAct.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 512
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 515
    return-void
.end method
