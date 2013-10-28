.class Lcom/lx/launcher8/AnallLauncher$16;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V
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
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$16;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$16;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;
    invoke-static {v0}, Lcom/lx/launcher8/AnallLauncher;->access$15(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayout;->scrollBottom()V

    .line 712
    return-void
.end method
