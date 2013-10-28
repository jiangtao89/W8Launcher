.class Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForItemLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/lx/launcher8/view/CellLayout;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;->this$0:Lcom/lx/launcher8/view/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;->this$0:Lcom/lx/launcher8/view/CellLayout;

    #calls: Lcom/lx/launcher8/view/CellLayout;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/lx/launcher8/view/CellLayout;->access$3(Lcom/lx/launcher8/view/CellLayout;)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;->mOriginalWindowAttachCount:I

    .line 1368
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;->this$0:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayout;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;->this$0:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1361
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;->this$0:Lcom/lx/launcher8/view/CellLayout;

    #calls: Lcom/lx/launcher8/view/CellLayout;->getWindowAttachCount()I
    invoke-static {v1}, Lcom/lx/launcher8/view/CellLayout;->access$3(Lcom/lx/launcher8/view/CellLayout;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;->this$0:Lcom/lx/launcher8/view/CellLayout;

    #calls: Lcom/lx/launcher8/view/CellLayout;->performItemLongClick()Z
    invoke-static {v0}, Lcom/lx/launcher8/view/CellLayout;->access$4(Lcom/lx/launcher8/view/CellLayout;)Z

    .line 1364
    :cond_0
    return-void
.end method
