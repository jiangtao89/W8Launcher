.class Lcom/lx/launcher8/view/ContactCellView$DynView;
.super Landroid/widget/ImageView;
.source "ContactCellView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/ContactCellView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynView"
.end annotation


# instance fields
.field private anim1:Landroid/view/animation/Animation;

.field private anim2:Landroid/view/animation/Animation;

.field final synthetic this$0:Lcom/lx/launcher8/view/ContactCellView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/view/ContactCellView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 530
    iput-object p1, p0, Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;

    .line 531
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 528
    iput-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView;->anim1:Landroid/view/animation/Animation;

    .line 529
    iput-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView;->anim2:Landroid/view/animation/Animation;

    .line 532
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/ContactCellView$DynView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 533
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ContactCellView$DynView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView;->anim1:Landroid/view/animation/Animation;

    .line 534
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ContactCellView$DynView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView;->anim2:Landroid/view/animation/Animation;

    .line 535
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView;->anim1:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lx/launcher8/view/ContactCellView$DynView$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/view/ContactCellView$DynView$1;-><init>(Lcom/lx/launcher8/view/ContactCellView$DynView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 571
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView;->anim2:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lx/launcher8/view/ContactCellView$DynView$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/view/ContactCellView$DynView$2;-><init>(Lcom/lx/launcher8/view/ContactCellView$DynView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 583
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/ContactCellView$DynView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView;->anim2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;
    .locals 1
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;

    return-object v0
.end method


# virtual methods
.method public startAnimation()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView;->anim1:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/ContactCellView$DynView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 587
    return-void
.end method
