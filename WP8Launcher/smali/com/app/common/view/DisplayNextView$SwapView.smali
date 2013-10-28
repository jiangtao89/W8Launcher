.class final Lcom/app/common/view/DisplayNextView$SwapView;
.super Ljava/lang/Object;
.source "DisplayNextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/common/view/DisplayNextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwapView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/common/view/DisplayNextView;

.field private view:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/app/common/view/DisplayNextView;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter "v"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/app/common/view/DisplayNextView$SwapView;->this$0:Lcom/app/common/view/DisplayNextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/app/common/view/DisplayNextView$SwapView;->view:Landroid/view/ViewGroup;

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x4000

    const/4 v2, 0x0

    .line 40
    iget-object v1, p0, Lcom/app/common/view/DisplayNextView$SwapView;->view:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v5

    .line 41
    .local v3, centerX:F
    iget-object v1, p0, Lcom/app/common/view/DisplayNextView$SwapView;->view:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v5

    .line 43
    .local v4, centerY:F
    new-instance v0, Lcom/app/common/view/Rotate3dAnimation;

    const/high16 v1, -0x3d4c

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/app/common/view/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 44
    .local v0, rotation:Lcom/app/common/view/Rotate3dAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/app/common/view/Rotate3dAnimation;->setDuration(J)V

    .line 45
    invoke-virtual {v0, v6}, Lcom/app/common/view/Rotate3dAnimation;->setFillAfter(Z)V

    .line 46
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/app/common/view/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 48
    iget-object v1, p0, Lcom/app/common/view/DisplayNextView$SwapView;->view:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    return-void
.end method
