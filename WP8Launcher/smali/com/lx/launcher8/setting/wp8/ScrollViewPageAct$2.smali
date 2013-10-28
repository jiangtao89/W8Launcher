.class Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$2;
.super Ljava/lang/Object;
.source "ScrollViewPageAct.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->startAnimationOut([Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

.field private final synthetic val$bottomBtns:[Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;[Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$2;->val$bottomBtns:[Landroid/widget/LinearLayout;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$2;->val$bottomBtns:[Landroid/widget/LinearLayout;

    #calls: Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->startAnimationIn([Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->access$1(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;[Landroid/widget/LinearLayout;)V

    .line 243
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 245
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 239
    return-void
.end method
