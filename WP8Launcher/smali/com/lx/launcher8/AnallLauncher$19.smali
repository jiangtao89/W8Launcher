.class Lcom/lx/launcher8/AnallLauncher$19;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->onAirplaneChanged(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;

.field private final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$19;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iput-boolean p2, p0, Lcom/lx/launcher8/AnallLauncher$19;->val$enable:Z

    .line 1525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1528
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$19;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher;->access$18(Lcom/lx/launcher8/AnallLauncher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1533
    :cond_0
    return-void

    .line 1530
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$19;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher;->access$18(Lcom/lx/launcher8/AnallLauncher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SimpleCellView;

    .line 1531
    .local v0, scv:Lcom/lx/launcher8/view/SimpleCellView;
    iget-boolean v2, p0, Lcom/lx/launcher8/AnallLauncher$19;->val$enable:Z

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SimpleCellView;->setAirPlaneMode(Z)V

    goto :goto_0
.end method
