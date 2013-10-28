.class Lcom/lx/launcher8/view/CellLayout$3;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/view/CellLayout;->clearChildrenCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/CellLayout;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout$3;->this$0:Lcom/lx/launcher8/view/CellLayout;

    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1105
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$3;->this$0:Lcom/lx/launcher8/view/CellLayout;

    #calls: Lcom/lx/launcher8/view/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v2}, Lcom/lx/launcher8/view/CellLayout;->access$5(Lcom/lx/launcher8/view/CellLayout;Z)V

    .line 1106
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$3;->this$0:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayout;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$3;->this$0:Lcom/lx/launcher8/view/CellLayout;

    #calls: Lcom/lx/launcher8/view/CellLayout;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v2}, Lcom/lx/launcher8/view/CellLayout;->access$6(Lcom/lx/launcher8/view/CellLayout;Z)V

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$3;->this$0:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayout;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$3;->this$0:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayout;->invalidate()V

    .line 1112
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$3;->this$0:Lcom/lx/launcher8/view/CellLayout;

    const/16 v1, 0x20

    #calls: Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V
    invoke-static {v0, v2, v1}, Lcom/lx/launcher8/view/CellLayout;->access$0(Lcom/lx/launcher8/view/CellLayout;II)V

    .line 1113
    return-void
.end method
