.class Lcom/lx/launcher8/MenuDialog$2;
.super Ljava/lang/Object;
.source "MenuDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/MenuDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/MenuDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/MenuDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/MenuDialog$2;->this$0:Lcom/lx/launcher8/MenuDialog;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lx/launcher8/MenuDialog$2;->this$0:Lcom/lx/launcher8/MenuDialog;

    #calls: Lcom/lx/launcher8/MenuDialog;->superDis()V
    invoke-static {v0}, Lcom/lx/launcher8/MenuDialog;->access$5(Lcom/lx/launcher8/MenuDialog;)V

    .line 302
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 298
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 295
    return-void
.end method
