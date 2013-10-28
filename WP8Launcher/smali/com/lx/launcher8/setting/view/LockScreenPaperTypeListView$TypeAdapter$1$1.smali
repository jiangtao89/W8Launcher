.class Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1$1;
.super Ljava/lang/Object;
.source "LockScreenPaperTypeListView.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1;

.field private final synthetic val$vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1;Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1$1;->this$2:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1;

    iput-object p2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 314
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    :cond_0
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 321
    return-void
.end method
