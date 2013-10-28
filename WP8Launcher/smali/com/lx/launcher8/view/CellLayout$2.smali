.class Lcom/lx/launcher8/view/CellLayout$2;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/view/CellLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout$2;->this$0:Lcom/lx/launcher8/view/CellLayout;

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$2;->this$0:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v0}, Lcom/lx/launcher8/AnallLauncher;->onDynStart()V

    .line 926
    return-void
.end method
