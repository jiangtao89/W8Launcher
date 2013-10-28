.class Lcom/lx/launcher8/view/MutiChooseView$ScrollRunnable;
.super Ljava/lang/Object;
.source "MutiChooseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/MutiChooseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mScrollY:I

.field final synthetic this$0:Lcom/lx/launcher8/view/MutiChooseView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/MutiChooseView;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lx/launcher8/view/MutiChooseView$ScrollRunnable;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, parent:Landroid/view/View;
    iget-object v0, p0, Lcom/lx/launcher8/view/MutiChooseView$ScrollRunnable;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    .line 117
    .local v0, child:Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #parent:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .restart local v1       #parent:Landroid/view/View;
    if-nez v1, :cond_2

    .line 121
    :cond_0
    if-eqz v1, :cond_1

    .line 122
    check-cast v1, Landroid/widget/ScrollView;

    .end local v1           #parent:Landroid/view/View;
    const/4 v2, 0x0

    iget v3, p0, Lcom/lx/launcher8/view/MutiChooseView$ScrollRunnable;->mScrollY:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 124
    :cond_1
    return-void

    .line 118
    .restart local v1       #parent:Landroid/view/View;
    :cond_2
    instance-of v2, v1, Landroid/widget/ScrollView;

    if-nez v2, :cond_0

    .line 119
    move-object v0, v1

    goto :goto_0
.end method

.method public setScrollY(I)V
    .locals 0
    .parameter "scrollY"

    .prologue
    .line 111
    iput p1, p0, Lcom/lx/launcher8/view/MutiChooseView$ScrollRunnable;->mScrollY:I

    .line 112
    return-void
.end method
