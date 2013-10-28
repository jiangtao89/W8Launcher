.class public Lcom/app/common/view/DisplayNextView;
.super Ljava/lang/Object;
.source "DisplayNextView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/common/view/DisplayNextView$SwapView;
    }
.end annotation


# instance fields
.field private view:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/app/common/view/DisplayNextView;->view:Landroid/view/ViewGroup;

    .line 14
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/app/common/view/DisplayNextView;->view:Landroid/view/ViewGroup;

    new-instance v1, Lcom/app/common/view/DisplayNextView$SwapView;

    iget-object v2, p0, Lcom/app/common/view/DisplayNextView;->view:Landroid/view/ViewGroup;

    invoke-direct {v1, p0, v2}, Lcom/app/common/view/DisplayNextView$SwapView;-><init>(Lcom/app/common/view/DisplayNextView;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 23
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 16
    return-void
.end method
