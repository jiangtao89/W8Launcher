.class Lcom/lx/launcher8/AnallLauncher$15;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->onMenuOpened(ILandroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$15;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$15;->this$0:Lcom/lx/launcher8/AnallLauncher;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lx/launcher8/AnallLauncher;->mMenuOpened:Z

    .line 557
    return-void
.end method
