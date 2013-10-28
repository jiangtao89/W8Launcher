.class Lcom/lx/launcher8/setting/wp8/ViewPageAct$4;
.super Ljava/lang/Object;
.source "ViewPageAct.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ViewPageAct;->startAnimationOut([Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

.field private final synthetic val$bottomBtns:[Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ViewPageAct;[Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$4;->val$bottomBtns:[Landroid/widget/LinearLayout;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$4;->val$bottomBtns:[Landroid/widget/LinearLayout;

    #calls: Lcom/lx/launcher8/setting/wp8/ViewPageAct;->startAnimationIn([Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->access$0(Lcom/lx/launcher8/setting/wp8/ViewPageAct;[Landroid/widget/LinearLayout;)V

    .line 281
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 283
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 277
    return-void
.end method
