.class Lcom/lx/launcher8/view/FolderCellView$FolderItem$1;
.super Ljava/lang/Object;
.source "FolderCellView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/view/FolderCellView$FolderItem;->setBitmap(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/view/FolderCellView$FolderItem;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/FolderCellView$FolderItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/FolderCellView$FolderItem$1;->this$1:Lcom/lx/launcher8/view/FolderCellView$FolderItem;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView$FolderItem$1;->this$1:Lcom/lx/launcher8/view/FolderCellView$FolderItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 263
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 259
    return-void
.end method
