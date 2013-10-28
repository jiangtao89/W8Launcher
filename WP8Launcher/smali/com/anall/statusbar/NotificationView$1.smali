.class Lcom/anall/statusbar/NotificationView$1;
.super Ljava/lang/Object;
.source "NotificationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/NotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/NotificationView;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/NotificationView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/NotificationView$1;->this$0:Lcom/anall/statusbar/NotificationView;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 345
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 340
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lcom/anall/statusbar/NotificationView$1;->this$0:Lcom/anall/statusbar/NotificationView;

    #getter for: Lcom/anall/statusbar/NotificationView;->mPower:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/anall/statusbar/NotificationView;->access$0(Lcom/anall/statusbar/NotificationView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/anall/statusbar/NotificationView$1;->this$0:Lcom/anall/statusbar/NotificationView;

    #getter for: Lcom/anall/statusbar/NotificationView;->mTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/anall/statusbar/NotificationView;->access$1(Lcom/anall/statusbar/NotificationView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/anall/statusbar/NotificationView$1;->this$0:Lcom/anall/statusbar/NotificationView;

    #getter for: Lcom/anall/statusbar/NotificationView;->watchered:Lcom/anall/statusbar/NotificationDetector;
    invoke-static {v0}, Lcom/anall/statusbar/NotificationView;->access$2(Lcom/anall/statusbar/NotificationView;)Lcom/anall/statusbar/NotificationDetector;

    move-result-object v0

    iput v1, v0, Lcom/anall/statusbar/NotificationDetector;->isHideView:I

    .line 336
    return-void
.end method
