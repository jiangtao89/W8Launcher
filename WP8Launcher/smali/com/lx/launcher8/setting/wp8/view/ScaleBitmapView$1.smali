.class Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView$1;
.super Ljava/lang/Object;
.source "ScaleBitmapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;I)V
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;)Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mType:I
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->access$1(Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->showDetailPic(I)V

    .line 57
    return-void
.end method
