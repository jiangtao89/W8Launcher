.class Lcom/lx/launcher8/view/DragController$3;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/DragController;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/DragController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/DragController$3;->this$0:Lcom/lx/launcher8/view/DragController;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController$3;->this$0:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/DragController;->cancelDrag()V

    .line 641
    return-void
.end method
