.class Lcom/lx/launcher8/DispalyFolderDialog$3;
.super Ljava/lang/Object;
.source "DispalyFolderDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/DispalyFolderDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/DispalyFolderDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/DispalyFolderDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/DispalyFolderDialog$3;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog$3;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    const/4 v1, 0x0

    #setter for: Lcom/lx/launcher8/DispalyFolderDialog;->endWithAnim:Z
    invoke-static {v0, v1}, Lcom/lx/launcher8/DispalyFolderDialog;->access$3(Lcom/lx/launcher8/DispalyFolderDialog;Z)V

    .line 273
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog$3;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    #calls: Lcom/lx/launcher8/DispalyFolderDialog;->realDismiss()V
    invoke-static {v0}, Lcom/lx/launcher8/DispalyFolderDialog;->access$4(Lcom/lx/launcher8/DispalyFolderDialog;)V

    .line 274
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 268
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 264
    return-void
.end method
